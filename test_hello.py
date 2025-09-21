"""Tests for hello.py."""

from hello import add


def test_add():
    """Test the add function with some basic cases."""
    assert add(2, 3) == 5
    assert add(-1, 1) == 0
    assert add(0, 0) == 0
