-- CreateTable
CREATE TABLE `Profil` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Utilisateur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(191) NOT NULL,
    `prenom` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `login` VARCHAR(191) NOT NULL,
    `statutUtilisateur` VARCHAR(191) NOT NULL,
    `profilId` INTEGER NOT NULL,

    UNIQUE INDEX `Utilisateur_email_key`(`email`),
    UNIQUE INDEX `Utilisateur_login_key`(`login`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Promotion` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Competence` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description` VARCHAR(191) NOT NULL,
    `libelle` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Referentiel` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `promotionId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ProfilSortie` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `referentielId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Niveau` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `competenceId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Utilisateur` ADD CONSTRAINT `Utilisateur_profilId_fkey` FOREIGN KEY (`profilId`) REFERENCES `Profil`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Referentiel` ADD CONSTRAINT `Referentiel_promotionId_fkey` FOREIGN KEY (`promotionId`) REFERENCES `Promotion`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProfilSortie` ADD CONSTRAINT `ProfilSortie_referentielId_fkey` FOREIGN KEY (`referentielId`) REFERENCES `Referentiel`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Niveau` ADD CONSTRAINT `Niveau_competenceId_fkey` FOREIGN KEY (`competenceId`) REFERENCES `Competence`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
