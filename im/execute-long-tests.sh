# Execute tests
nosetests -v test/TestIM.py test/test_im_logic.py test/TestREST.py test/TestREST_JSON.py test/connectors/*.py --with-timer --timer-no-color --with-xunit --with-coverage --cover-erase --cover-html --cover-xml --cover-package=IM
