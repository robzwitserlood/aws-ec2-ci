from hello import multiply


def setup_function(function):
    print("Running Setup: %s" % {function.__name__})
    function.x = 2.0
    function.y = 3.0


def teardown_function(function):
    print("Running Teardown: %s" % {function.__name__})
    del function.x
    del function.y


def test_hello_multiply():
    assert multiply(test_hello_multiply.x, test_hello_multiply.y) == 6.0
