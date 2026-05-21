class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779345702-g49e69d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779345702-g49e69d/amp-darwin-arm64"
      sha256 "008b85662c9b8bffcc77222f4e89a38c954bc1af93e4b0dc103bf0ec3c3a0936"
    else
      url "https://static.ampcode.com/cli/0.0.1779345702-g49e69d/amp-darwin-x64"
      sha256 "a811e9e0e6d36155ac3181f86ef6851c088f4cf1339796b82c2d29766baf6422"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779345702-g49e69d/amp-linux-arm64"
      sha256 "0d4ee14359fa15cc0fa2da76161b3f04a7c1a2e3555fd522e5dba7e6c5866172"
    else
      url "https://static.ampcode.com/cli/0.0.1779345702-g49e69d/amp-linux-x64"
      sha256 "3a18b3cd8e5e144b9e0946dbf9b9754f356454599de3417131ec2b67bad5a8d6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
