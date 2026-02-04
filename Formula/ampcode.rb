class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770206634-geeb2e1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770206634-geeb2e1/amp-darwin-arm64"
      sha256 "d34532845ff1b5aea117c8ec4ae4e6a152ba825d8e2010165e1014d575033710"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770206634-geeb2e1/amp-darwin-x64"
      sha256 "eb411689caba033ca01a190a83df3ebd283198a68b93659466a84fd17c78c9b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770206634-geeb2e1/amp-linux-arm64"
      sha256 "7b023d81759c49797b0da0a455dcb2d468e5348c4abad9bcdc2d54622a05157c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770206634-geeb2e1/amp-linux-x64"
      sha256 "6a8a86e6af59ca6fdfad078ced6c948441e5fbf13eab3761660be1153cc3f733"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
