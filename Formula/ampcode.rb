class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786320433-geeee54"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786320433-geeee54/amp-darwin-arm64"
      sha256 "b62a1a5fea58b8ff1d716517167bc3ebf9e02e9ed80927bc85ed06b0cb5c68fe"
    else
      url "https://static.ampcode.com/cli/0.0.1786320433-geeee54/amp-darwin-x64"
      sha256 "a068574963c7a6190f49cf45239bf20eea2a4b30c5a8e8dd39a40c0133b02eb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786320433-geeee54/amp-linux-arm64"
      sha256 "9af00c017c4622a58e16d068808ea01b5115a0e31fc67c913fbafe56e5cd0974"
    else
      url "https://static.ampcode.com/cli/0.0.1786320433-geeee54/amp-linux-x64"
      sha256 "579b5868b0377f3fe87ff1f0e263b77c67da0f68e6d5e46f1ac3fd74c3f37bb3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
