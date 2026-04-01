class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775019248-g482f31"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775019248-g482f31/amp-darwin-arm64"
      sha256 "1ea48ddb3990becba8583f9f42a90d181813c7a5f42976ddf60916e1798dcc0b"
    else
      url "https://static.ampcode.com/cli/0.0.1775019248-g482f31/amp-darwin-x64"
      sha256 "662d08ca3a4eb2d5bf1ec4bd8c07a8bbffe967c7f36a488bec82540d5d4185c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775019248-g482f31/amp-linux-arm64"
      sha256 "a6c55e0903929e3c2c12140a85ce53d8981d24b8ab4b2b5823988ed680c42e09"
    else
      url "https://static.ampcode.com/cli/0.0.1775019248-g482f31/amp-linux-x64"
      sha256 "ebeb47612b9560b6b0e6607032d03930f6abafd03cb50d4e8db42ca067e6212e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
