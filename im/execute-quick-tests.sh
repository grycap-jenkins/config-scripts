# Execute tests
nosetests -v test/QuickTestIM.py test/test_im_logic.py test/TestREST.py --with-timer --with-xunit --with-coverage --cover-erase --cover-html --cover-package=IM,connectors
