/* generateHtml.c */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include "genhtml.h"

void generateHtml(char path[])
{
    /* keywords for the string extraction from the mkhtmlf.txt file */
    char mkhtmlfData[4096]; // full line form, example: [name]=freebsd
    char lineSpecifierData[64]; // line specifier form, example: [name]
    char lineData[4096]; // FAKE - changed line data form, example: freebsd
    char nlineData[4096]; // REAL line data form, example: freebsd
    char spacer[64] = {0}; // spacer for lineSpecifierData
    char lineDataSpacer[4096] = {0}; // spacer for lineData
    int equalSignIndex = 0; // the index of the equal sign for finding the datas
    char *token;

    /* mkhtmlf file opened for reading */
    FILE *file = fopen("mkhtmlf.txt", "r");

    /* specific data */
    char *fileName, *fileLanguage, *fileTitle, *fileFavicon, *keywords, *description;

    if (file != NULL)
    {
        /* line cleaning for blueprint file */
        clearEmptyLines(file);

        while (!feof(file))
        {   
            if (fgets(mkhtmlfData, 4000, file))
            {
                strcat(mkhtmlfData, "\0");

                for (int i = 0; i < strlen(mkhtmlfData) - 1; i++)
                {
                    if (mkhtmlfData[i] == '=')
                    {
                        equalSignIndex = i;
                    }
                }

                strncpy(lineSpecifierData, mkhtmlfData, equalSignIndex);
                token = strtok(mkhtmlfData, "="); token = strtok(NULL, "=");
                strcpy(lineData, token); strtok("\n", lineData); strncpy(nlineData, lineData, strlen(lineData) - 1);

                if (strcmp(lineSpecifierData, "[name]") == 0)
                {
                    fileName = (char *)malloc(strlen(nlineData) + 2);
                    strcpy(fileName, nlineData);
                }
                else if (strcmp(lineSpecifierData, "[language]") == 0)
                {
                    fileLanguage = (char *)malloc(strlen(nlineData) + 2);
                    strcpy(fileLanguage, nlineData);
                }
                else if (strcmp(lineSpecifierData, "[title]") == 0)
                {
                    fileTitle = (char *)malloc(strlen(nlineData) + 2);
                    strcpy(fileTitle, nlineData);
                }
                else if (strcmp(lineSpecifierData, "[favicon]") == 0)
                {
                    fileFavicon = (char *)malloc(strlen(nlineData) + 2);
                    strcpy(fileFavicon, nlineData);
                }
                else if (strcmp(lineSpecifierData, "[keywords]") == 0)
                {
                    keywords = (char *)malloc(strlen(nlineData) + 2);
                    strcpy(keywords, nlineData);
                }
                else if (strcmp(lineSpecifierData, "[description]") == 0)
                {
                    description = (char *)malloc(strlen(nlineData) + 2);
                    strcpy(description, nlineData);
                }

                // clear the data from variables
                strncpy(lineSpecifierData, spacer, 64);
                strncpy(nlineData, lineDataSpacer, 4096);
            }
        }
        
        printf("%s", description);
    }
    else
    {
        // define a mkhtmlf.txt source message (genmessages)
    }

    fclose(file);
}