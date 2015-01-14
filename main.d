import std.stdio;
import engine;

string versionNumber = "1.0.0";

void main(string[] args)
{
    printLogo();

	if (args.length < 4) {
		writeln("Invalid arguments");
		printHelp();
		return;
	}

	string filePath = args[1];
	string rsaN = args[2];
	string rsaE = args[3];

	Engine engine = new Engine(rsaN, rsaE);
	engine.executeCrack(filePath);
}

void printLogo() {
	writeln("############################");
	writeln("SulkaDasm version " ~ versionNumber);
	writeln("Written by Anthony93260");
	writeln("############################");
}

void printHelp() {
	writeln("Usage: SulkaDasm.exe [file Path] [RSA N] [RSA E]");
}