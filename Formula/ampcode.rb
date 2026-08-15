class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786780953-g223577"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786780953-g223577/amp-darwin-arm64"
      sha256 "7e1f47497e6b92c68848dea1a8c57bdc6d0d0fadd670c6372f15802f27ffe4f8"
    else
      url "https://static.ampcode.com/cli/0.0.1786780953-g223577/amp-darwin-x64"
      sha256 "75de10694709799cc4a0d46905c8658c0163358117401fdb2d19a5efdeb2adb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786780953-g223577/amp-linux-arm64"
      sha256 "45f3ca8a4d2ef79ba1a1fb0e4fe1b4e6668dc438af651da058b1666ec7f55718"
    else
      url "https://static.ampcode.com/cli/0.0.1786780953-g223577/amp-linux-x64"
      sha256 "fd326f6fa81e2a23d6dd326fe6b4021088d4d980f27090d81467720d063f5e8f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
