class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792506219-g025e7e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792506219-g025e7e/amp-darwin-arm64"
      sha256 "b9f40423e4ac6549908eceb93901138f9fe10b8add4114a2c16b550bfe8c5afe"
    else
      url "https://static.ampcode.com/cli/0.0.1792506219-g025e7e/amp-darwin-x64"
      sha256 "f1c2ff7ce0e1eaa63ec798850ff94196bd9db2ba242e53142d31f06aa9f58f7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792506219-g025e7e/amp-linux-arm64"
      sha256 "14783447bc54e1bfa39d68239fe60f7a2d39b71948d50cc2c9814e403d73457f"
    else
      url "https://static.ampcode.com/cli/0.0.1792506219-g025e7e/amp-linux-x64"
      sha256 "56e60beff486dc945bb296d117b0515b7bac6af423d410fcd13ffdcff980e4bf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
