NAME = Inception
SRCS = srcs/docker-compose.yml
VOLUMES = /home/$(USER)/data/db /home/$(USER)/data/wordpress

# Color codes
GREEN = \033[0;32m
RED = \033[0;31m
BLUE = \033[0;34m 
ORANGE = \033[0;33m
NC = \033[0m 


all: start

start: volumes
	@echo "$(GREEN)Starting $(NAME)$(NC)"
	@docker-compose -f $(SRCS) up -d --build --force-recreate

stop:
	@echo "$(RED)Stopping $(NAME)$(NC)"
	@docker-compose -f $(SRCS) down

volumes:
	@echo "$(BLUE)Creating volumes$(NC)"
	@mkdir -p $(VOLUMES)

clean: stop
	sudo rm -rf $(VOLUMES)

fclean: clean # change if you are using more then 1 docker in your machine
#	docker-compose -f $(SRCS) down --rmi all
#	docker rmi -f $(docker images -q)
#	docker volume rm $(docker volume ls -q)

re: fclean start

.PHONY: all start stop
