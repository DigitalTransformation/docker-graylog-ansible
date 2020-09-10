db.createUser(
    {
        user: "<<graylog_user>>",
        pwd: "<<password>>",
        roles: [
            {
                role: "readWrite",
                db: "graylog"    # <<graylog_database>>
            }
        ]
    }
);
