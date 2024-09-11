-- CreateTable
CREATE TABLE `Account` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `hashedRefreshToken` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Account_userId_key`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Characters` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `accountId` INTEGER NOT NULL,
    `health` INTEGER NOT NULL DEFAULT 500,
    `power` INTEGER NOT NULL DEFAULT 100,
    `magicpower` INTEGER NOT NULL DEFAULT 100,
    `strength` INTEGER NOT NULL DEFAULT 4,
    `dexterity` INTEGER NOT NULL DEFAULT 4,
    `intelligence` INTEGER NOT NULL DEFAULT 4,
    `luck` INTEGER NOT NULL DEFAULT 4,
    `arm` INTEGER NOT NULL DEFAULT 4,
    `mrm` INTEGER NOT NULL DEFAULT 4,
    `gameMoney` INTEGER NOT NULL DEFAULT 10000,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Item` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `itemType` ENUM('WEAPON', 'ARMOR', 'ACCESSORY') NOT NULL,
    `healthBonus` INTEGER NOT NULL DEFAULT 0,
    `powerBonus` INTEGER NOT NULL DEFAULT 0,
    `magicpowerBonus` INTEGER NOT NULL DEFAULT 0,
    `strengthBonus` INTEGER NOT NULL DEFAULT 0,
    `dexterityBonus` INTEGER NOT NULL DEFAULT 0,
    `intelligenceBonus` INTEGER NOT NULL DEFAULT 0,
    `luckBonus` INTEGER NOT NULL DEFAULT 0,
    `armBonus` INTEGER NOT NULL DEFAULT 0,
    `mrmBonus` INTEGER NOT NULL DEFAULT 0,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Inventory` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `characterId` INTEGER NOT NULL,
    `itemId` INTEGER NOT NULL,
    `quantity` INTEGER NOT NULL DEFAULT 1,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Equipment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `characterId` INTEGER NOT NULL,
    `itemId` INTEGER NOT NULL,
    `equipType` ENUM('WEAPON', 'ARMOR', 'ACCESSORY') NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ShopItem` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `itemId` INTEGER NOT NULL,
    `price` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PurchaseHistory` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `characterId` INTEGER NOT NULL,
    `shopItemId` INTEGER NOT NULL,
    `purchaseDate` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Characters` ADD CONSTRAINT `Characters_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `Account`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Inventory` ADD CONSTRAINT `Inventory_characterId_fkey` FOREIGN KEY (`characterId`) REFERENCES `Characters`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Inventory` ADD CONSTRAINT `Inventory_itemId_fkey` FOREIGN KEY (`itemId`) REFERENCES `Item`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Equipment` ADD CONSTRAINT `Equipment_characterId_fkey` FOREIGN KEY (`characterId`) REFERENCES `Characters`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Equipment` ADD CONSTRAINT `Equipment_itemId_fkey` FOREIGN KEY (`itemId`) REFERENCES `Item`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ShopItem` ADD CONSTRAINT `ShopItem_itemId_fkey` FOREIGN KEY (`itemId`) REFERENCES `Item`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PurchaseHistory` ADD CONSTRAINT `PurchaseHistory_characterId_fkey` FOREIGN KEY (`characterId`) REFERENCES `Characters`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PurchaseHistory` ADD CONSTRAINT `PurchaseHistory_shopItemId_fkey` FOREIGN KEY (`shopItemId`) REFERENCES `ShopItem`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
