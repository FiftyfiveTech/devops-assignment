FROM wordpress:latest

LABEL Name="Saurabh's wordpress image"

EXPOSE 80

CMD ["apache2-foreground"]
