import os


def test_mock_environment(monkeypatch):
    # Set up the environment variable
    monkeypatch.setenv("ENV_VARIABLE_01", "mocked_value")

    env_variable_01 = os.getenv("ENV_VARIABLE_01")

    # Check that the environment variable is set
    assert env_variable_01 == "mocked_value"
