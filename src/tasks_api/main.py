from fastapi import FastAPI



app = FastAPI(
    title="Task To-Do API",
    description="Profesional API Rest for TO-DO App",
    verion="1.0.0",
)


@app.get(
    "/health",
    summary="Health check endpoint",
    tags=["General"],
)
async def health_check() -> dict[str, str]:
    """
    Endpoint to check API status.

    Returns:
        Status service.
    """
    return {"status": "healthy", "service": "tasks-api"}

if __name__ == "__main__":
    import uvicorn

    uvicorn.run(
        "tasks_api.main:app",
        host="0.0.0.0",
        port=8080,
        reload=True,
    )