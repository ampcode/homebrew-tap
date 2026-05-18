class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779098076-gcb060a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779098076-gcb060a/amp-darwin-arm64"
      sha256 "4f057cf129fae087cba3f5e71be1712edee5685697ff7d36a2d9a0663bed6b91"
    else
      url "https://static.ampcode.com/cli/0.0.1779098076-gcb060a/amp-darwin-x64"
      sha256 "492deac19cecb5d06c929a28d73cb0dc49e2a38e464475d57cef0d54a32245f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779098076-gcb060a/amp-linux-arm64"
      sha256 "e11b88323c324905dd25821bceb9c2c002b3fec09f2e5045535afa2ec8f92bfb"
    else
      url "https://static.ampcode.com/cli/0.0.1779098076-gcb060a/amp-linux-x64"
      sha256 "84c3f7ca8861f11971ea3b85273db2fb4859b283de44f206245410288f8930e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
