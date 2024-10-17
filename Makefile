NAME = Inception
SRCS = srcs/docker-compose.yml
VOLUMES = srcs/requirements/volumes_tmp

# Color codes
GREEN = \033[0;32m
RED = \033[0;31m
BLUE = \033[0;34m 
ORANGE = \033[0;33m
NC = \033[0m 


all: start

start:
	@echo "$(GREEN)Starting $(NAME)$(NC)"
	@docker-compose -f $(SRCS) up -d --build

stop:
	@echo "$(RED)Stopping $(NAME)$(NC)"
	@docker-compose -f $(SRCS) down

clean: stop
	docker-compose -f $(SRCS) down --rmi all
	sudo rm -rf $(VOLUMES)

re: stop start

.PHONY: all start stop
