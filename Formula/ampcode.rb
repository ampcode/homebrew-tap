class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778518196-gcde0a1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778518196-gcde0a1/amp-darwin-arm64"
      sha256 "b9f11c908cb1233ba35a6aec01e4c4c7e3a8f376130dcccda98ccd52dfe34c7d"
    else
      url "https://static.ampcode.com/cli/0.0.1778518196-gcde0a1/amp-darwin-x64"
      sha256 "63d08b4303ca776b71dd7ae391a5f51d58147854e4ad46f6786ab1777fbe6b09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778518196-gcde0a1/amp-linux-arm64"
      sha256 "74402af8d6b565469fb4bdf2ddc347f739dc47f98e6491c5f0c4a202ff5e7b89"
    else
      url "https://static.ampcode.com/cli/0.0.1778518196-gcde0a1/amp-linux-x64"
      sha256 "beb35e498156cb27ca97bae78b361cce31c0a0ef6215b7e8254b64da88da7920"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
