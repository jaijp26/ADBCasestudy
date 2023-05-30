{
    "job_id": 875307392109044,
    "creator_user_name": "bc_wallet_230427_yc8agerttg@buildercloudwallet.onmicrosoft.com",
    "run_as_user_name": "bc_wallet_230427_yc8agerttg@buildercloudwallet.onmicrosoft.com",
    "run_as_owner": true,
    "settings": {
        "name": "Load into Synapse",
        "email_notifications": {
            "no_alert_for_skipped_runs": false
        },
        "webhook_notifications": {},
        "timeout_seconds": 0,
        "max_concurrent_runs": 1,
        "tasks": [
            {
                "task_key": "BronzeLayer-_Ingest_RawData",
                "notebook_task": {
                    "notebook_path": "/Users/bc_wallet_230427_yc8agerttg@buildercloudwallet.onmicrosoft.com/CaseStudy/Ingest songs data - Bronze Layer",
                    "source": "WORKSPACE"
                },
                "existing_cluster_id": "0529-043206-frano2vi",
                "timeout_seconds": 0,
                "email_notifications": {},
                "notification_settings": {
                    "no_alert_for_skipped_runs": false,
                    "no_alert_for_canceled_runs": false,
                    "alert_on_last_attempt": false
                }
            },
            {
                "task_key": "SilverLayer-_Prepare_and_Transform_Data",
                "depends_on": [
                    {
                        "task_key": "BronzeLayer-_Ingest_RawData"
                    }
                ],
                "notebook_task": {
                    "notebook_path": "/Users/bc_wallet_230427_yc8agerttg@buildercloudwallet.onmicrosoft.com/CaseStudy/Prepare songs data - Silver Layer",
                    "source": "WORKSPACE"
                },
                "existing_cluster_id": "0529-043206-frano2vi",
                "timeout_seconds": 0,
                "email_notifications": {},
                "notification_settings": {
                    "no_alert_for_skipped_runs": false,
                    "no_alert_for_canceled_runs": false,
                    "alert_on_last_attempt": false
                }
            },
            {
                "task_key": "GoldLayer-Load_into_SynapseDW",
                "depends_on": [
                    {
                        "task_key": "SilverLayer-_Prepare_and_Transform_Data"
                    }
                ],
                "notebook_task": {
                    "notebook_path": "/Users/bc_wallet_230427_yc8agerttg@buildercloudwallet.onmicrosoft.com/CaseStudy/Load data to Synapse - Gold Layer",
                    "source": "WORKSPACE"
                },
                "existing_cluster_id": "0529-043206-frano2vi",
                "timeout_seconds": 0,
                "email_notifications": {},
                "notification_settings": {
                    "no_alert_for_skipped_runs": false,
                    "no_alert_for_canceled_runs": false,
                    "alert_on_last_attempt": false
                }
            }
        ],
        "git_source": {
            "git_url": "https://github.com/jaijp26/ADBCasestudy.git",
            "git_provider": "gitHub",
            "git_branch": "main"
        },
        "format": "MULTI_TASK"
    },
    "created_time": 1685360308356
}
