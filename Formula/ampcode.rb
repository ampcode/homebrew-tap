class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784910596-gc1fe8e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784910596-gc1fe8e/amp-darwin-arm64"
      sha256 "f81b8444c63a1fd0a84886a9267b70a8b38db4035f0eeca0491e9a4c8d9d5bac"
    else
      url "https://static.ampcode.com/cli/0.0.1784910596-gc1fe8e/amp-darwin-x64"
      sha256 "9d7d07ebb0e6d7dc1fcafbbfcb9ab5916f2557b3f273f9c3e5404eded6fe3442"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784910596-gc1fe8e/amp-linux-arm64"
      sha256 "08882de6dec1ae624dd929569744045ae43d910ecc0bd8d56299b04e8c66574d"
    else
      url "https://static.ampcode.com/cli/0.0.1784910596-gc1fe8e/amp-linux-x64"
      sha256 "b855be0f355f0edab942a2abffc38e694170c53426349e340e454ee3a4dbb2ef"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
