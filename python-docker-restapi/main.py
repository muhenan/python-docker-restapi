from fastapi import FastAPI

# Create an instance of the FastAPI class
app = FastAPI()

# Define a GET route to retrieve a "Hello, World!" message
@app.get("/hello")
def read_root():
    return "Hello, Docker, Python"
