class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777666485-g3ed57a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777666485-g3ed57a/amp-darwin-arm64"
      sha256 "ad6bef45bff6d5c854a4800b207a42c23f9395118108b8b1bfa67ca2f3b22472"
    else
      url "https://static.ampcode.com/cli/0.0.1777666485-g3ed57a/amp-darwin-x64"
      sha256 "238993112d7a1121680f48029ac4f21be0b809398f61769519ed7a9e728d5fb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777666485-g3ed57a/amp-linux-arm64"
      sha256 "b2fd1163dd67f97aa5e6bde1f0585a977baf6e0f4571d5fbdc018e12d72051d6"
    else
      url "https://static.ampcode.com/cli/0.0.1777666485-g3ed57a/amp-linux-x64"
      sha256 "aa80e9fda0f5883fca489a12d5ae21187d93d37e2c3a37dae7681159d6486497"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
