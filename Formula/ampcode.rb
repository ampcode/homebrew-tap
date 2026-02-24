class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771963583-ga618c9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771963583-ga618c9/amp-darwin-arm64"
      sha256 "9a08d8baaecc7bedc7dc0bf0fdbbaeda28af57831d279a602d384a5ad4bef6a1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771963583-ga618c9/amp-darwin-x64"
      sha256 "0771904ed96720d586c58d52193ec3e2ad43e4b25562232cfcc1dbbebba1beb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771963583-ga618c9/amp-linux-arm64"
      sha256 "a63a742216d0dcc424830ac6d2bf99ec8d43b661232344ec88c5605f06146bce"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771963583-ga618c9/amp-linux-x64"
      sha256 "5b1bf640d37482b55279bc4bbdd3ac011f4ced21e91d20c8a798b5ed0151448d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
