pipeline {
    agent any
	environment {
        CMAKE_PREFIX_PATH = "C:/Qt/5.15.2/mingw81_64"
		CMAKE_C_COMPILER = "C:/Qt/Tools/mingw810_64/bin/gcc.exe"
		CMAKE_MAKE_PROGRAM = "C:/Qt/Tools/Ninja/ninja.exe"
		PATH_TO_NINJA = "C:/Qt/Tools/Ninja/ninja.exe"
		CMAKE_CXX_COMPILER = "C:/Qt/Tools/mingw810_64/bin/g++.exe"
    }
	
    stages {
        stage('Print environment variables') {
            steps {
				echo 'Checking Envronments'
                echo "QT CMake Prefix: ${CMAKE_PREFIX_PATH}"
            }
        }
		stage ("Build") {
			steps {
				echo "Cleaning workspace"
				
				bat "SET PATH=%PATH%;${PATH_TO_NINJA}"
				echo "Building..."
				bat "cmake -DCMAKE_MAKE_PROGRAM=${CMAKE_MAKE_PROGRAM} -DCMAKE_C_COMPILER=\"${CMAKE_C_COMPILER}\" -DCMAKE_CXX_COMPILER=\"${CMAKE_CXX_COMPILER}\" -GNinja ."
				//bat "${PATH_TO_NINJA}/ninja.exe"
			}
		}
    }
}
