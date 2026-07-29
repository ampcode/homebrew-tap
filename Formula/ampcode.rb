class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785328548-gc93a97"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785328548-gc93a97/amp-darwin-arm64"
      sha256 "5f3fdcd9e924d15b55e68c1fd507e3d8c0dacb8b5035f11adbfbe2f70da4f967"
    else
      url "https://static.ampcode.com/cli/0.0.1785328548-gc93a97/amp-darwin-x64"
      sha256 "ff46eaed2de1983175055505f82ecdd78ecdac522dca3e2bd251e6de138168c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785328548-gc93a97/amp-linux-arm64"
      sha256 "6849f157b3107c5e86d0eb5484e5992265ec9388364536111d4f98c8747168c5"
    else
      url "https://static.ampcode.com/cli/0.0.1785328548-gc93a97/amp-linux-x64"
      sha256 "633d19a9b8a098339c5e07b0ec677e422d3fc690fa96668e06ec00881c4b1cbf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
