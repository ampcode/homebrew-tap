class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788580839-ga71d30"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788580839-ga71d30/amp-darwin-arm64"
      sha256 "6c57de4d4e7344595957c76aa84d758d6baad29f6f16c0870508294a9da45b30"
    else
      url "https://static.ampcode.com/cli/0.0.1788580839-ga71d30/amp-darwin-x64"
      sha256 "76c22d8663d2a591b3d3f8eaa461ca5efe9dd163eb7d7b352b671ebb164e866e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788580839-ga71d30/amp-linux-arm64"
      sha256 "df54f21124fe35f819b843538f5e3c83fcea04afe7e7d0f2aebfed23c8315e39"
    else
      url "https://static.ampcode.com/cli/0.0.1788580839-ga71d30/amp-linux-x64"
      sha256 "d0cee19b8d7bb9a2b2fd2c4b455d37c6ea9c64faffe98119446b6ee470b43e76"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
