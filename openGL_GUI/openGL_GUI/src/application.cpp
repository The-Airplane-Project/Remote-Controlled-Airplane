#include <GLFW/glfw3.h>
#include <iostream>
#include <Windows.h>
#include <windows.h>
#include <Xinput.h>
#include <stdio.h>
#include <tchar.h>
#pragma comment (lib, "xinput.lib")
#include <cstdlib>

#include <glm.hpp>
#include <obj_loader.h>

#include <Serial.h>
#include <SerialClass.h>
#include <gamepad.h>


int main(void)
{
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
        return -1;

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        std::cout << "I can output too" << std::endl;
        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

        glBegin(GL_TRIANGLES);

        glVertex2f(-0.5f, -0.5f);
        glVertex2f(0.0f, 0.5f);
        glVertex2f(0.5f, -0.5f);


        glEnd();

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}