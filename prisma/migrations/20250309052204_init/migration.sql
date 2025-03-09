-- CreateTable
CREATE TABLE "PortfolioApp" (
    "id" SERIAL NOT NULL,
    "pf_description_short" TEXT NOT NULL,
    "pf_description_long" TEXT,
    "pf_link" VARCHAR(255) NOT NULL,
    "pf_img" TEXT,
    "pf_comment" JSONB,
    "pf_category" VARCHAR(50),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PortfolioApp_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PortfolioApp_pf_link_key" ON "PortfolioApp"("pf_link");
