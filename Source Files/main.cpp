
#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/videoio/videoio.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <sqlite3.h>

#include <iostream>
#include <stdio.h>

using namespace cv;
using namespace std;

//hide the local functions in an anon namespace
namespace {


    int process(VideoCapture& capture) {
        int n = 0;
        char filename[200];
        string window_name = "video | q or esc to quit";
        cout << "press space to save a picture. q or esc to quit" << endl;
        namedWindow(window_name, WINDOW_KEEPRATIO); //resizable window;
        Mat frame;

        for (;;) {
            capture >> frame;
            if (frame.empty())
                break;

            imshow(window_name, frame);
            char key = (char)waitKey(30); //delay N millis, usually long enough to display and capture input

            switch (key) {
            case 'q':
            case 'Q':
            case 27: //escape key
                return 0;
            case ' ': //Save an image
                sprintf(filename,"filename%.3d.jpg",n++);
                imwrite(filename,frame);
                cout << "Saved " << filename << endl;
                break;
            default:
                break;
            }
        }
        return 0;
    }
}

int main(int ac, char** av) {

	sqlite3 *db;
		int rc;

		rc = sqlite3_open("database.db", &db);

		if(rc){
			fprintf(stderr, "Can not open database: %s\n", sqlite3_errmsg(db));
			return 0;
		}else{
			fprintf(stderr, "Opened database successfully\n");
		}

	sqlite3_close(db);

    cv::CommandLineParser parser(ac, av, "{help h||}{@input||}");

    std::string arg = parser.get<std::string>("@input");
    if (arg.empty()) {

        return 1;
    }
    VideoCapture capture(arg); //try to open string, this will attempt to open it as a video file or image sequence
    if (!capture.isOpened()) //if this fails, try to open as a video camera, through the use of an integer param
        capture.open(atoi(arg.c_str()));
    if (!capture.isOpened()) {
        cerr << "Failed to open the video device, video file or image sequence!\n" << endl;

        return 1;
    }
    return process(capture);
}
