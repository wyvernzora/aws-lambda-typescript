import { Handler, Context, Callback } from 'aws-lambda'

interface Response {
    statusCode: number
    body: string
}

const handler: Handler = (event: any, context: Context, callback: Callback) => {
    const response: Response = {
        statusCode: 200,
        body: 'Hello, World!'
    }
    callback(null, response)
}

export { handler }