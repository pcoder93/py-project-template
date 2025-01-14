import logging

logger = logging.getLogger("repo_name")
handler = logging.StreamHandler()
log_format = logging.Formatter(
    fmt="%(asctime)s.%(msecs)03d - [%(levelname)s] - %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S",
)
handler.setFormatter(log_format)
logger.addHandler(handler)
