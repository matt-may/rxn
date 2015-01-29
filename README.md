# JsonProcessor

## Description
***
JsonProcessor is a simple command line application that allows you to merge permissions from a JSON input file, and write those merged permissions to an output file.

### Usage
***
First, ensure you have all the required gems:
```
bundle install
```
CD to the application's ```bin``` directory:
```
$ cd ./bin
```
To use the application, run:
```
./json_processor merge <infile> <outfile>
```
You can also run the application with the ```-s``` flag to print the results of the merge to ```STDOUT``` instead:
```
./json_processor merge <infile> -s
```
To learn about how to use the command, run:
```
./json_processor help merge
```
**Note**: Several test data files which can be used as the ```<infile>``` are provided in the ```test/data``` directory.