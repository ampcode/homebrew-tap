class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781772088-g667f8e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781772088-g667f8e/amp-darwin-arm64"
      sha256 "99d869627a49852efa52b80463fd6dd203b1eee79ac5b6f2bc682b69d10a1cb1"
    else
      url "https://static.ampcode.com/cli/0.0.1781772088-g667f8e/amp-darwin-x64"
      sha256 "d5dad8e5cef658ae5db9ec60202b64d1c5dabd836c987f110183fdc8165d97de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781772088-g667f8e/amp-linux-arm64"
      sha256 "39b703565e664ccc37d9dc33a704b99b9d0c8e3edac56a782bf533447e22720d"
    else
      url "https://static.ampcode.com/cli/0.0.1781772088-g667f8e/amp-linux-x64"
      sha256 "0b786eb236abe8bf8ae3bd23798226788c638ec4b07d7daeaa3c0d0414368c1f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
