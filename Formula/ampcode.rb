class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773878698-g9a9736"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773878698-g9a9736/amp-darwin-arm64"
      sha256 "4f880ebaf17698d75f2abaf3a327c58bd1b4be5ccab47130309df0abdf08900f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773878698-g9a9736/amp-darwin-x64"
      sha256 "deec00b036dce5cb50ad97f2c8130a05537b635c168f1b62e2ea1c25c65e2c98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773878698-g9a9736/amp-linux-arm64"
      sha256 "fbd9fd669340be9967461f757934f8f756c511b8ca7e4f8e7691b4838718e03c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773878698-g9a9736/amp-linux-x64"
      sha256 "75e0ea447e27aaab1edb97726f627c0cb31ee4d521df5a4bcf5573fef9f3fe83"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
