class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779920297-gb3c071"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779920297-gb3c071/amp-darwin-arm64"
      sha256 "1ea79a67c60d0255f9b466e34fe205346f91cfef61d799366f92822ec9e6f4f4"
    else
      url "https://static.ampcode.com/cli/0.0.1779920297-gb3c071/amp-darwin-x64"
      sha256 "5e1ccda0d9432c84819c28e01f01852428ce9eb5346ae6ac843e4613f927725a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779920297-gb3c071/amp-linux-arm64"
      sha256 "314bd49a35212c57e87060c6d54c37a48930555645196f462c47594bcd6422f8"
    else
      url "https://static.ampcode.com/cli/0.0.1779920297-gb3c071/amp-linux-x64"
      sha256 "7485d94707d4749ef21abc2a75b501220cd2ac06822332efc9b802e2fcd1c691"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
