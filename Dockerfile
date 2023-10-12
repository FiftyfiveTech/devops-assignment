# Use the official WordPress image
FROM wordpress:latest

# Add any additional configurations or customizations if needed
# For example, you can copy custom themes or plugins to the WordPress container.

# Expose the necessary port(s), if any.
EXPOSE 80

# Set environment variables, if needed.

# Define the entry point to start the WordPress application.
ENTRYPOINT ["docker-entrypoint.sh"]

# Define any other relevant instructions.
