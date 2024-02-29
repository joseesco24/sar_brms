# ---------------------------------------------------------------------------------------------------------------------
# ** stage 1: production image
# ---------------------------------------------------------------------------------------------------------------------

# ** info: declaration of the production image base version
FROM openltablets/ws:5.27.0

# ** info: declaration of the properties directory
ARG APP_PROPERTIES_DIRECTORY=/opt/openl/app/webapps/ROOT/WEB-INF/classes

# ** info: declaration of the rules directory
ARG RULES_DIRECTORY=/tmp/openl/brms

# ** info: copying the properties files from the building context to the properties directory
COPY ["src/brms_files/properties" ,"$APP_PROPERTIES_DIRECTORY/"]

# ** info: copying the rules files from the building context to the rules directory
COPY ["src/brms_files/rules" ,"$RULES_DIRECTORY/"]