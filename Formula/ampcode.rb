class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776961778-g0883c3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776961778-g0883c3/amp-darwin-arm64"
      sha256 "dbbba926015bc2e57c69340a1587767a19b4564a824e1f8d297ec3105dc82163"
    else
      url "https://static.ampcode.com/cli/0.0.1776961778-g0883c3/amp-darwin-x64"
      sha256 "45fe8a5ab77a50372c08341d8c3b656857e95e57e17644063940ee0106ea773f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776961778-g0883c3/amp-linux-arm64"
      sha256 "fd82a06fee85fdb8fc2448e02926bab6c273e693e94583c4003f7c0a630ba36b"
    else
      url "https://static.ampcode.com/cli/0.0.1776961778-g0883c3/amp-linux-x64"
      sha256 "d1ab5f90211a31ee3896e5d5506de25cbd0ab988021a38066ffdbb1493f084da"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
