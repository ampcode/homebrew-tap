class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776730295-gbaeee6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776730295-gbaeee6/amp-darwin-arm64"
      sha256 "1f139be4dad633c72f6243748f1ac32c7648bb3282b7f449789fb63782a550ca"
    else
      url "https://static.ampcode.com/cli/0.0.1776730295-gbaeee6/amp-darwin-x64"
      sha256 "311428edaebf5905bd68cbfd24509dccff776b4f21095c8d44f296264d2e8751"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776730295-gbaeee6/amp-linux-arm64"
      sha256 "b16667acb9e66aad0264f932f7fb142abe6f58b3fece92db14e9598453d27861"
    else
      url "https://static.ampcode.com/cli/0.0.1776730295-gbaeee6/amp-linux-x64"
      sha256 "8a6e3c8e43dd1dc0b3301601c3414249135aafffc8c88ac9239f63433d4ab590"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
