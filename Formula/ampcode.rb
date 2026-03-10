class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773129970-gb3ab74"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773129970-gb3ab74/amp-darwin-arm64"
      sha256 "a6bc38ee3b966bca2123bce72ac79b79c520a1e615c642940c10d72f12cbd85a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773129970-gb3ab74/amp-darwin-x64"
      sha256 "4a097f6b76b903c05a76963c9d0956ed5f78b92edb0ca6e7fb72ea064088cc21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773129970-gb3ab74/amp-linux-arm64"
      sha256 "5633bd4bf86ed845c584168a83ac31c07634dd3df036f2524b8ce29ab7b897a3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773129970-gb3ab74/amp-linux-x64"
      sha256 "913d8aece8cfb3d1e4f8056480176852b523ba545708856eca6e7e12dc938184"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
