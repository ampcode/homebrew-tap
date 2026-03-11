class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773230699-gca2c06"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773230699-gca2c06/amp-darwin-arm64"
      sha256 "58e2ff963859c097089207e3503198ed8068856c57e731f814723c606ca3cd1e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773230699-gca2c06/amp-darwin-x64"
      sha256 "d6efd932e7fe56d18a329aa7e2113ac76e79446bd2751251b8dd9b8163152de0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773230699-gca2c06/amp-linux-arm64"
      sha256 "f6024b68ae09ac1eda4f015a49123be98264193fbbff9f2ff4ae9aed54426c7d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773230699-gca2c06/amp-linux-x64"
      sha256 "d84881ba597e5d52256c19fdc6faa1da28c51ed7b70481570de18555434221b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
