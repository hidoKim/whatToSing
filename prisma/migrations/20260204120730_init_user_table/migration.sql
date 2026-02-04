-- CreateTable
CREATE TABLE `users` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(200) NOT NULL,
    `oauth_provider` ENUM('google', 'kakao', 'naver', 'anonymous') NOT NULL,
    `oauth_id` VARCHAR(100) NOT NULL,
    `role` ENUM('user', 'admin', 'anonymous') NOT NULL DEFAULT 'user',
    `created_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `updated_at` DATETIME(6) NOT NULL,
    `is_deleted` BOOLEAN NOT NULL DEFAULT false,

    UNIQUE INDEX `users_email_key`(`email`),
    INDEX `idx_user_email`(`email`),
    INDEX `idx_user_oauth`(`oauth_provider`, `oauth_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
