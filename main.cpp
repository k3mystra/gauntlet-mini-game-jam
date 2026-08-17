#include "vendor/raylib/include/raylib.h"

int main (int, char *[]) {
    const int SCREEN_WIDTH = 1024;
    const int SCREEN_HEIGHT = 576;

    const int SANDBOX_WIDTH = 800;
    const int SANDBOX_HEIGHT = 400;

    InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "main");

    SetTargetFPS(60);

    // Main game loop
    while (!WindowShouldClose())
    {
        BeginDrawing();

        ClearBackground(BLACK);
        DrawRectangleLines(
            SCREEN_WIDTH/2 - SANDBOX_WIDTH/2,
            SCREEN_HEIGHT/2 - SANDBOX_HEIGHT/2,
            SANDBOX_WIDTH, SANDBOX_HEIGHT, ORANGE);

        EndDrawing();
    }

    CloseWindow();
    return 0;
}
