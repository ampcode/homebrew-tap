class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777519070-g9d4adf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777519070-g9d4adf/amp-darwin-arm64"
      sha256 "80e81d8ffbfc4e33165cf1a9f04c59b2e41bfce5bcd7d79cc5dc9e521d1f51b6"
    else
      url "https://static.ampcode.com/cli/0.0.1777519070-g9d4adf/amp-darwin-x64"
      sha256 "6cb639d58a9ed2dcc32eb85a972ed93f8da10fd8d91089585375315afe4d6a00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777519070-g9d4adf/amp-linux-arm64"
      sha256 "3717fce15e5ba3cfe1559489911b74c13d8d26b367370a6a0280f357a1eb7fa0"
    else
      url "https://static.ampcode.com/cli/0.0.1777519070-g9d4adf/amp-linux-x64"
      sha256 "7515241eaf2f16acf9f04675f038b30d0c7260904b240af824b8393bc5ab97d8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
