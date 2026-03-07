class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772899306-g73f1a6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772899306-g73f1a6/amp-darwin-arm64"
      sha256 "6a2c2e7b96cd4766ab03e1f93b84ed30826ca56efede2be4b7eb03444f5babce"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772899306-g73f1a6/amp-darwin-x64"
      sha256 "8751a9682107093c0f98f34121558192d513ad4215ae342980668d53253368c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772899306-g73f1a6/amp-linux-arm64"
      sha256 "5b424689e6fff4b3d80ecf90cf0ee5c74ad446d8a69b3d16b8dcc3dc39b92f80"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772899306-g73f1a6/amp-linux-x64"
      sha256 "49f73fcea60ec478cce32c8f886dced62fa007ebf3f55e9b6d917fd5a375021f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
