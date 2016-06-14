# Execute tests
nosetests -v test/QuickTestIM.py test/test_im_logic.py test/TestREST.py test/connectors/*.py test/SSH.py y test/VMRC.py --with-timer --timer-no-color --with-xunit --with-coverage --cover-erase --cover-html --cover-package=IM,connectors
