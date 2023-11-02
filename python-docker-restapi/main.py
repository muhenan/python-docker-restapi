from fastapi import FastAPI, HTTPException

# Create an instance of the FastAPI class
app = FastAPI()

# Define a GET route to retrieve a "Hello, World!" message
@app.get("/hello")
def read_root():
    return "Hello, Docker, Python, FastApi, RestApi"

# Define a new GET route
@app.get("/greet/{name}")
def greet_user(name: str):
    return f"Hello, {name}!"

# Define a POST route to create a new item
@app.post("/items/")
def create_item(item: dict):
    if "name" not in item or "description" not in item:
        raise HTTPException(status_code=400, detail="name and description fields are required")
    return item

