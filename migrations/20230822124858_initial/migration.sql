-- CreateTable
CREATE TABLE `measurements` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `comments` VARCHAR(191) NULL,
    `heartbeat` INTEGER NULL,
    `maximum` INTEGER NULL,
    `minimum` INTEGER NULL,
    `imc` DECIMAL(65, 30) NULL,
    `height` DECIMAL(65, 30) NULL,
    `alert` BOOLEAN NOT NULL DEFAULT false,
    `status` INTEGER NULL DEFAULT 1,
    `measurment_at` TIMESTAMP(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
    `created_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,
    `weight` DECIMAL(65, 30) NULL,
    `usercode` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `medicines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `namerefer` VARCHAR(191) NULL,
    `laboratory` VARCHAR(191) NULL,
    `dosage` VARCHAR(191) NULL,
    `price` DECIMAL(65, 30) NULL,
    `usercode` VARCHAR(191) NULL,
    `status` INTEGER NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `foods` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `type` VARCHAR(191) NULL,
    `perceivedSensation` VARCHAR(191) NULL,
    `labestimatedCaloriesoratory` VARCHAR(191) NULL,
    `foodDetails` VARCHAR(191) NULL,
    `caloriesCalculation` DECIMAL(65, 30) NULL,
    `comments` VARCHAR(191) NULL,
    `usercode` VARCHAR(191) NULL,
    `status` INTEGER NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `physicalactivities` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `calories` INTEGER NULL,
    `activity` VARCHAR(191) NULL,
    `intensity` VARCHAR(191) NULL,
    `perceivedSensation` VARCHAR(191) NULL,
    `local` VARCHAR(191) NULL,
    `distance` DECIMAL(65, 30) NULL,
    `start` DATETIME(3) NULL,
    `end` DATETIME(3) NULL,
    `comments` VARCHAR(191) NULL,
    `time` VARCHAR(191) NULL,
    `usercode` VARCHAR(191) NULL,
    `status` INTEGER NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `birthdate` VARCHAR(191) NULL,
    `height` DECIMAL(65, 30) NULL,
    `weight` DECIMAL(65, 30) NULL,
    `bloodtype` VARCHAR(191) NULL,
    `imc` DECIMAL(65, 30) NULL,
    `imcclassification` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `password` VARCHAR(191) NULL,
    `passwordcrypt` VARCHAR(191) NULL,
    `status` INTEGER NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sleepnights` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `start` DATETIME(3) NULL,
    `wakeUp` DATETIME(3) NULL,
    `sleepHours` DECIMAL(65, 30) NULL,
    `sleepQualitySensation` VARCHAR(191) NULL,
    `comments` VARCHAR(191) NULL,
    `status` INTEGER NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `weighings` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `value` DECIMAL(65, 30) NULL,
    `comments` VARCHAR(191) NULL,
    `weighing_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `status` INTEGER NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
