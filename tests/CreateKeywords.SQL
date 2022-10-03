CREATE TABLE keywords (
    id INTEGER PRIMARY KEY,
    short_name VARCHAR NOT NULL,
    keyword VARCHAR NOT NULL,
    favicon_url VARCHAR NOT NULL,
    url VARCHAR NOT NULL,
    safe_for_autoreplace INTEGER,
    originating_url VARCHAR,
    date_created INTEGER DEFAULT 0,
    usage_count INTEGER DEFAULT 0,
    input_encodings VARCHAR,
    suggest_url VARCHAR,
    prepopulate_id INTEGER DEFAULT 0,
    created_by_policy INTEGER DEFAULT 0,
    last_modified INTEGER DEFAULT 0,
    sync_guid VARCHAR,
    alternate_urls VARCHAR,
    image_url VARCHAR,
    search_url_post_params VARCHAR,
    suggest_url_post_params VARCHAR,
    image_url_post_params VARCHAR,
    new_tab_url VARCHAR,
    last_visited INTEGER DEFAULT 0,
    created_from_play_api INTEGER DEFAULT 0,
    is_active INTEGER DEFAULT 0,
    starter_pack_id INTEGER DEFAULT 0
);

INSERT INTO keywords(id,short_name,keyword,favicon_url,url,safe_for_autoreplace,originating_url,date_created,usage_count,input_encodings,suggest_url,prepopulate_id,created_by_policy,last_modified,sync_guid,alternate_urls,image_url,search_url_post_params,suggest_url_post_params,image_url_post_params,new_tab_url,last_visited,created_from_play_api,is_active,starter_pack_id) VALUES (2,'Bing','bing.com','https://www.bing.com/sa/simg/bing_p_rr_teal_min.ico','{bing:baseURL}search?q={searchTerms}&{bing:cvid}{bing:msb}{google:assistedQueryStats}',1,NULL,0,0,'UTF-8','{bing:baseURL}qbox?query={searchTerms}&language={language}&{bing:partner}{bing:cvid}{bing:msb}{bing:ig}{google:inputType}{google:cursorPosition}{google:pageClassification}{bing:features}{bing:flights}',1,0,0,'485bf7d3-0215-45af-87dc-538868000001','[]','{bing:baseURL}images/detail/search?iss=sbiupload&FORM=ANCMS1#enterInsights',NULL,NULL,'imageBin={google:imageThumbnailBase64}','{bing:baseURL}chrome/newtab',0,0,1,0);
INSERT INTO keywords(id,short_name,keyword,favicon_url,url,safe_for_autoreplace,originating_url,date_created,usage_count,input_encodings,suggest_url,prepopulate_id,created_by_policy,last_modified,sync_guid,alternate_urls,image_url,search_url_post_params,suggest_url_post_params,image_url_post_params,new_tab_url,last_visited,created_from_play_api,is_active,starter_pack_id) VALUES (3,'Yahoo!','yahoo.com','https://search.yahoo.com/favicon.ico','https://search.yahoo.com/search{google:pathWildcard}?ei={inputEncoding}&fr=crmas_sfp&p={searchTerms}',1,NULL,0,0,'UTF-8','https://search.yahoo.com/sugg/chrome?output=fxjson&appid=crmas_sfp&command={searchTerms}',2,0,0,'485bf7d3-0215-45af-87dc-538868000002','[]',NULL,NULL,NULL,NULL,'https://search.yahoo.com?fr=crmas_sfp',0,0,1,0);
INSERT INTO keywords(id,short_name,keyword,favicon_url,url,safe_for_autoreplace,originating_url,date_created,usage_count,input_encodings,suggest_url,prepopulate_id,created_by_policy,last_modified,sync_guid,alternate_urls,image_url,search_url_post_params,suggest_url_post_params,image_url_post_params,new_tab_url,last_visited,created_from_play_api,is_active,starter_pack_id) VALUES (4,'Google','google.com','https://www.google.com/images/branding/product/ico/googleg_lodp.ico','{google:baseURL}search?q={searchTerms}&{google:RLZ}{google:originalQueryForSuggestion}{google:assistedQueryStats}{google:searchboxStats}{google:searchFieldtrialParameter}{google:iOSSearchLanguage}{google:prefetchSource}{google:searchClient}{google:sourceId}{google:contextualSearchVersion}ie={inputEncoding}',1,NULL,0,0,'UTF-8','{google:baseSuggestURL}search?{google:searchFieldtrialParameter}client={google:suggestClient}&gs_ri={google:suggestRid}&xssi=t&q={searchTerms}&{google:inputType}{google:omniboxFocusType}{google:cursorPosition}{google:pageClassification}{google:searchVersion}{google:sessionToken}{google:prefetchQuery}sugkey={google:suggestAPIKeyParameter}',3,0,0,'485bf7d3-0215-45af-87dc-538868000003','["{google:baseURL}#q={searchTerms}","{google:baseURL}search#q={searchTerms}","{google:baseURL}webhp#q={searchTerms}","{google:baseURL}s#q={searchTerms}","{google:baseURL}s?q={searchTerms}"]','{google:baseSearchByImageURL}upload',NULL,NULL,'encoded_image={google:imageThumbnail},image_url={google:imageURL},sbisrc={google:imageSearchSource},original_width={google:imageOriginalWidth},original_height={google:imageOriginalHeight}',NULL,0,0,1,0);
INSERT INTO keywords(id,short_name,keyword,favicon_url,url,safe_for_autoreplace,originating_url,date_created,usage_count,input_encodings,suggest_url,prepopulate_id,created_by_policy,last_modified,sync_guid,alternate_urls,image_url,search_url_post_params,suggest_url_post_params,image_url_post_params,new_tab_url,last_visited,created_from_play_api,is_active,starter_pack_id) VALUES (5,'DuckDuckGo','duckduckgo.com','https://duckduckgo.com/favicon.ico','https://duckduckgo.com/?q={searchTerms}',1,NULL,0,0,'UTF-8','https://duckduckgo.com/ac/?q={searchTerms}&type=list',92,0,0,'485bf7d3-0215-45af-87dc-538868000092','[]',NULL,NULL,NULL,NULL,'https://duckduckgo.com/chrome_newtab',0,0,1,0);
