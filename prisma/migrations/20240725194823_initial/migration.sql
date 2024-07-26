/*
  Warnings:

  - A unique constraint covering the columns `[produced_country_id]` on the table `movies` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `produced_country_id` to the `movies` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "movies" ADD COLUMN     "produced_country_id" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "movies_produced_country_id_key" ON "movies"("produced_country_id");

-- AddForeignKey
ALTER TABLE "movies" ADD CONSTRAINT "movies_produced_country_id_fkey" FOREIGN KEY ("produced_country_id") REFERENCES "produced_counrty"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
