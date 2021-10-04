FROM ubuntu
COPY flask-app bash-script-automation.sh database-setup.sh ./
RUN chmod +x bash-script-automation.sh
RUN chmod +x database-setup.sh
RUN sh bash-script-automation.sh
CMD ["python3","__init__.py"]
# CMD ["/database-setup.sh"]
