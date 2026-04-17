class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776414563-g05657a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776414563-g05657a/amp-darwin-arm64"
      sha256 "ef05c5afb62ee8bf33fcaf514bb693cca4cc0dbdf1c617a8edb3f30fde239624"
    else
      url "https://static.ampcode.com/cli/0.0.1776414563-g05657a/amp-darwin-x64"
      sha256 "0702ee95350ade674f8090412e4b99c373d7dc9192d799d9dc73205a52c491c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776414563-g05657a/amp-linux-arm64"
      sha256 "474b972b610af9d2ac7cef4cdf410a02b0743ab67dbf946655490ce7c33d49a6"
    else
      url "https://static.ampcode.com/cli/0.0.1776414563-g05657a/amp-linux-x64"
      sha256 "1fae29f45ffe0acf0baf5fc5f40492191f55dbcbda2b5fce645f56ce1cf24c60"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
