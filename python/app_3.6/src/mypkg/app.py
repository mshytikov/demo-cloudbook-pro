import platform


def hello_world():
    return "Hello from Python {}".format(platform.python_version())


def main():
    print(hello_world())
