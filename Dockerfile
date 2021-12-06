FROM pingme998/hssh
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh
