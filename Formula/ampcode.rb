class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776211921-g60bccf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776211921-g60bccf/amp-darwin-arm64"
      sha256 "ca5f183f856bc6c94a9cc1a9c1c420423921fd9849c5fb5c7f8a6dbe665ca1c8"
    else
      url "https://static.ampcode.com/cli/0.0.1776211921-g60bccf/amp-darwin-x64"
      sha256 "e3b24cfa3d97c5f729bcb689c11a9a08d31b4a774490c27d25a19631d921aca9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776211921-g60bccf/amp-linux-arm64"
      sha256 "88c1a92c0b6c2fa804d3a8d770627bc296579991fdbaed39446be76cf8a8af09"
    else
      url "https://static.ampcode.com/cli/0.0.1776211921-g60bccf/amp-linux-x64"
      sha256 "dd5117a122b69940eaa8fbb38d93a7c6f280a7d37e46e5a9a865dfbc654e04c8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
