A sample application to demonstrate the use of dlopen in the main module and how the side module can access functions in the main module.

dlopentest in main.cpp will call sideyPOD in side.cpp to demonstrate the use of dlopen. sideyPOD in side.cpp will in turn call mainInt in main.cpp

Emscripten dlls do not check for undefined symbols during build time so the Web doesn't suffer from the circular dependency problem that exists in other platforms."# dylink_exceptions" 
